package com.eee.mari.board;

public class Pager {

	public static final int PAGE_SCALE=10;
	public static final int BLOCK_SCALE=10;
	private int curPage;
	private int prevPage;
	private int nextPage;
	private int totPage;
	private int totBlock;
	private int curBlock;
	private int prevBlock;
	private int nextBlock;
	
	private int pageBegin;
	private int pageEnd;
	
	private int blockBegin;
	private int blockEnd;
	
	public Pager(int count, int curPage) {
		curBlock=1; 
		this.curPage = curPage;
		setTotPage(count);
		
		setPageRange();
		setTotBlock();
		
		setBlockRange();
	}
	public void setBlockRange() {
		//현재 페이지가 몇번째 페이지 블록에 속하는지 계산
		curBlock
		=(int)Math.ceil((curPage-1)/BLOCK_SCALE)+1;
		//현재 페이지 블록의 시작, 끝 번호 계산
		blockBegin=(curBlock-1)*BLOCK_SCALE+1;
		blockEnd=blockBegin+BLOCK_SCALE-1;
		//마지막 페이지 번호가 범위를 초과하지 않도록 처리
		if(blockEnd > totPage) blockEnd=totPage;
		//이전을 눌렀을 때 이동할 페이지 번호
		prevPage=
				(curBlock==1)?1:(curBlock-1)*BLOCK_SCALE;
		//다음을 눌렀을 때 이동할 페이지 번호
		nextPage=curBlock>totBlock ?
				(curBlock*BLOCK_SCALE) : (curBlock*BLOCK_SCALE)+1;
				//마지막 페이지가 범위를 초과하지 않도록 처리
				if(nextPage >= totPage) nextPage=totPage;
	}
	
	public void setPageRange() {
		// 시작번호
		pageBegin=(curPage-1)*PAGE_SCALE+1;
		// 끝번호
		pageEnd=pageBegin + PAGE_SCALE-1;
	}
	
	

	public int getCurPage() {
		return curPage;
	}
	public void setCurPage(int curPage) {
		this.curPage = curPage;
	}
	public int getPrevPage() {
		return prevPage;
	}
	public void setPrevPage(int prevPage) {
		this.prevPage = prevPage;
	}
	public int getNextPage() {
		return nextPage;
	}
	public void setNextPage(int nextPage) {
		this.nextPage = nextPage;
	}
	public int getTotPage() {
		return totPage;
	}
	public void setTotPage(int count) {
		totPage = (int)Math.ceil(count*1.0 / PAGE_SCALE);
	}
	public int getTotBlock() {
		return totBlock;
	}
	public void setTotBlock() {
		totBlock=(int)Math.ceil(totPage / BLOCK_SCALE);
	}
	public int getCurBlock() {
		return curBlock;
	}
	public void setCurBlock(int curBlock) {
		this.curBlock = curBlock;
	}
	public int getPrevBlock() {
		return prevBlock;
	}
	public void setPrevBlock(int prevBlock) {
		this.prevBlock = prevBlock;
	}
	public int getNextBlock() {
		return nextBlock;
	}
	public void setNextBlock(int nextBlock) {
		this.nextBlock = nextBlock;
	}
	public int getPageBegin() {
		return pageBegin;
	}
	public void setPageBegin(int pageBegin) {
		this.pageBegin = pageBegin;
	}
	public int getPageEnd() {
		return pageEnd;
	}
	public void setPageEnd(int pageEnd) {
		this.pageEnd = pageEnd;
	}
	public int getBlockBegin() {
		return blockBegin;
	}
	public void setBlockBegin(int blockBegin) {
		this.blockBegin = blockBegin;
	}
	public int getBlockEnd() {
		return blockEnd;
	}
	public void setBlockEnd(int blockEnd) {
		this.blockEnd = blockEnd;
	}
	public static int getPageScale() {
		return PAGE_SCALE;
	}
	public static int getBlockScale() {
		return BLOCK_SCALE;
	}
}
