package edu.hgsf.nanyu.util;

import java.io.File;
import java.io.IOException;
import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.HashMap;

import org.apache.lucene.analysis.Analyzer;
import org.apache.lucene.analysis.standard.StandardAnalyzer;
import org.apache.lucene.document.Document;
import org.apache.lucene.document.Field.Store;
import org.apache.lucene.document.TextField;
import org.apache.lucene.index.DirectoryReader;
import org.apache.lucene.index.IndexWriter;
import org.apache.lucene.index.IndexWriterConfig;
import org.apache.lucene.queryparser.classic.ParseException;
import org.apache.lucene.queryparser.classic.QueryParser;
import org.apache.lucene.search.IndexSearcher;
import org.apache.lucene.search.Query;
import org.apache.lucene.search.ScoreDoc;
import org.apache.lucene.search.TopDocs;
import org.apache.lucene.search.highlight.Fragmenter;
import org.apache.lucene.search.highlight.Highlighter;
import org.apache.lucene.search.highlight.InvalidTokenOffsetsException;
import org.apache.lucene.search.highlight.QueryScorer;
import org.apache.lucene.search.highlight.SimpleFragmenter;
import org.apache.lucene.search.highlight.SimpleHTMLFormatter;
import org.apache.lucene.store.Directory;
import org.apache.lucene.store.FSDirectory;
import org.apache.lucene.util.Version;

public class LuceneIndex {
	private static String INDEX_DIR = "/home/NY/lucene";
	private static Analyzer ana = null;
	private static Directory dir = null;

	public static ResultSet getResult(String sql) {
		Connection conn = DBUtil.getConnection();
		ResultSet rs = null;
		try {
			Statement stat = conn.createStatement();
			rs = stat.executeQuery(sql);
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return rs;
	}

	public static void index(ResultSet res){
		 try {
			ana =new StandardAnalyzer(Version.LUCENE_40);
			dir = FSDirectory.open(new File(INDEX_DIR));			

			 File indexFile = new File(INDEX_DIR);
			 if (!indexFile.exists()) {
			     indexFile.mkdirs();
			    }
			 IndexWriterConfig config = new IndexWriterConfig(Version.LUCENE_40, ana);
			 IndexWriter indexWriter = new IndexWriter(dir, config);		
			 
			 while(res.next()){
				 	Document doc=new Document();
		            doc.add(new TextField("name",res.getString("name"),Store.YES));
		            doc.add(new TextField("profile",res.getString("profile"),Store.YES));
		            doc.add(new TextField("title",res.getString("title"),Store.YES));
		            indexWriter.addDocument(doc);
			 }
			 indexWriter.commit();
			 indexWriter.close();
			 
		} catch (IOException e) {
			e.printStackTrace();
		} catch (SQLException e) {
			e.printStackTrace();
		}
	}
	
	public static HashMap<String,String> searcher(String queryString){
		 String fieldName = "text";
		 HashMap<String,String> smap = new HashMap<String,String>();
		 try {
			 dir = FSDirectory.open(new File(INDEX_DIR));
			 ana = new StandardAnalyzer(Version.LUCENE_40);
			 
			 DirectoryReader ireader = DirectoryReader.open(dir);
			 IndexSearcher isearcher = new IndexSearcher(ireader);
			 
			 QueryParser parser = new QueryParser(Version.LUCENE_40, "profile", ana);
			 Query query = parser.parse(queryString);
	         
			//搜索相似度最高的5条记录
	            TopDocs topDocs = isearcher.search(query, 5);
	            //System.out.println("命中：" + topDocs.totalHits);
	            //输出结果
	            ScoreDoc[] scoreDocs = topDocs.scoreDocs;
	            for (int i = 0; i < Math.min(5, scoreDocs.length); ++i)
	            {
	                Document targetDoc = isearcher.doc(scoreDocs[i].doc);
	 
	                String key=targetDoc.get("name");
	                String profile = targetDoc.get("profile");
	                String value = displayHtmlHighlight(query, ana, fieldName, profile, 100);
	                smap.put(key, value);
	            } 
		} catch (IOException e) {
			e.printStackTrace();
		} catch (ParseException e) {
			e.printStackTrace();
		} catch (InvalidTokenOffsetsException e) {
			e.printStackTrace();
		}  
	     return smap;
	 }
	 static String displayHtmlHighlight(Query query, Analyzer analyzer, String fieldName, String fieldContent, int fragmentSize) throws IOException, InvalidTokenOffsetsException
	    {
	        Highlighter highlighter = new Highlighter(new SimpleHTMLFormatter("<font color='red'>", "</font>"), new QueryScorer(query));
	        Fragmenter fragmenter = new SimpleFragmenter(fragmentSize);
	        highlighter.setTextFragmenter(fragmenter);
	        return highlighter.getBestFragment(analyzer, fieldName, fieldContent);
	    }
}
