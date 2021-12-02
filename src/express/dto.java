package express;

import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Date;

public class dto {
    private int id;
    private String name;
    private Date date;
    private int roomNum;

    private SimpleDateFormat format = new SimpleDateFormat("yyyy-MM-dd");

    public int getId() {
        return id;
    }

    public String getName() {
        return name;
    }

    public Date getDate() {
        return date;
    }

    public int getRoomNum() {
        return roomNum;
    }

    public dto(int id, String name, String date, int roomNum) throws ParseException {
        this.id=id;
        this.name=name;
        this.date= format.parse(date);
        this.roomNum=roomNum;
    }
}