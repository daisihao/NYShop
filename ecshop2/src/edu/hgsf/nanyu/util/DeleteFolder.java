package edu.hgsf.nanyu.util;

import java.io.File;

public class DeleteFolder {
	public static void deleteAll(File path) {
		if (!path.exists()) // 路径存在
			return;
		if (path.isFile()) { // 是文件
			path.delete();
			return;
		}
		File[] files = path.listFiles();
		for (int i = 0; i < files.length; i++) {
			deleteAll(files[i]);
		}
		path.delete();
	}

	
	public static void main(String[] args) { 
		deleteAll(new File("d:/abc")); 
	
	}
}
