package com.shzn.entity.page;

public class Page {
	/*--��ҳʱ��Ҫ���������--*/
	//��ǰҳ���ɿͻ����ҳ�����룬Ĭ��Ϊ��һҳ
	private int currentPage = 1;
	//ÿҳ����У��̶���ֵ
	private int pageSize = 5;
	
	/*--��ҳSQL����Ҫ������--*/
	private int begin; //��ʼ��,(currentPage-1)*pageSize
	private int end; //��ֹ��,currentPage*pageSize+1
	
	//������ҳ��������������
	private int rows; //������
	
	//ҳ�涯̬����ҳ��ʱ����Ҫ��ֵ
	private int totalPage; //��ҳ��
	
	public int getRows(){
		return rows;
	}
	public void setRows(int rows){
		this.rows = rows;
	}
	public int getTotalPage(){
		//������ҳ��
		if(rows%pageSize == 0){
			//�����������������ҳ���������Ľ��
			totalPage = rows/pageSize;
		}else{
			//�����������������ҳ�����������+1
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
