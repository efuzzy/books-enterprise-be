package home.bookent.be.model;

import java.util.Date;

public class Read {
    private int userId;
    private int bookId;
    private Date ts;
    private int startW;
    private int endW;
    
    public int getUserId() {
        return userId;
    }
    public void setUserId(int userId) {
        this.userId = userId;
    }
    public int getBookId() {
        return bookId;
    }
    public void setBookId(int bookId) {
        this.bookId = bookId;
    }
    public int getStartW() {
        return startW;
    }
    public void setStartW(int startW) {
        this.startW = startW;
    }
    public Date getTs() {
        return ts;
    }
    public void setTs(Date ts) {
        this.ts = ts;
    }
    public int getEndW() {
        return endW;
    }
    public void setEndW(int endW) {
        this.endW = endW;
    }
    
    
}
