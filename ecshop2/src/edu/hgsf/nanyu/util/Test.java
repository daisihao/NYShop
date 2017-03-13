/*package edu.hgsf.nanyu.util;

import java.io.File;
import java.util.List;

import org.apache.lucene.document.Document;
import org.apache.lucene.index.IndexableField;

public class Test{
	static String sql="select * from product";
	public Test() {
		DeleteFolder.deleteAll(new File("C://lucene"));
		LuceneIndex.index(LuceneIndex.getResult(sql));
	}
	public static void main(String[] args) {
		List<String> dlist = LuceneIndex.searcher("还是靠大家阿什顿");
		for(int i=0;i<dlist.size();i++){
			System.out.println(dlist.get(i));
		}
	}
}
*/