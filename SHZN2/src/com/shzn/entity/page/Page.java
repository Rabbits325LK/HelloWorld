package com.shzn.entity.page;

public class Page {
	/*--分页时需要输入的条件--*/
	//当前页，由客户点击页面输入，默认为第一页
	private int currentPage = 1;
	//每页最大行，固定的值
	private int pageSize = 5;
	
	/*--分页SQL所需要的条件--*/
	private int begin; //起始行,(currentPage-1)*pageSize
	private int end; //终止行,currentPage*pageSize+1
	
	//计算总页数所依赖的条件
	private int rows; //总行数
	
	//页面动态创建页面时所需要的值
	private int totalPage; //总页数
	
	public int getRows(){
		return rows;
	}
	public void setRows(int rows){
		this.rows = rows;
	}
	public int getTotalPage(){
		//计算总页数
		if(rows%pageSize == 0){
			//如果可以整数，则总页面就是相除的结果
			totalPage = rows/pageSize;
		}else{
			//如果不能整数，则总页面就是相除结果+1
			totalPage = rows/pageSize+1;
		}
		return totalPage;
	}
	public void setTotalPage(int totalPage) {
		this.totalPage = totalPage;
	}
	public int getBegin() {
		begin = (currentPage-1)*pageSize;
		return begin;
	}
	public void setBegin(int begin) {
		this.begin = begin;
	}
	public int getEnd() {
		end = currentPage*pageSize+1;
		return end;
	}
	public void setEnd(int end) {
		this.end = end;
	}
	public int getCurrentPage() {
		return currentPage;
	}
	public void setCurrentPage(int currentPage) {
		this.currentPage = currentPage;
	}
	public int getPageSize() {
		return pageSize;
	}
	public void setPageSize(int pageSize) {
		this.pageSize = pageSize;
	}	
}
