package demo.modle;

/**
 * Created by 高伟冬 on 2017/6/15.
 * library
 * 19:22
 * 星期四
 */
public class Book {
    private Integer id;
    private String title;
    private String author;
    private String pud;
    private String time;
    private double price;
    private int amount;

    public Book() {

    }
    public Book(Integer id, String title, String author, String pud, String time, double price, int amout) {
        this.id = id;
        this.title = title;
        this.author = author;
        this.pud = pud;
        this.time = time;
        this.price = price;
        this.amount = amout;
    }

    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public String getTitle() {
        return title;
    }

    public void setTitle(String title) {
        this.title = title;
    }

    public String getAuthor() {
        return author;
    }

    public void setAuthor(String author) {
        this.author = author;
    }

    public String getPud() {
        return pud;
    }

    public void setPud(String pud) {
        this.pud = pud;
    }

    public String getTime() {
        return time;
    }

    public void setTime(String time) {
        this.time = time;
    }

    public double getPrice() {
        return price;
    }

    public void setPrice(double price) {
        this.price = price;
    }

    public int getAmout() {
        return amount;
    }

    public void setAmout(int amout) {
        this.amount = amout;
    }
}
