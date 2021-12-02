package express;

import java.text.ParseException;
import java.util.ArrayList;

public class dao {
    private static ArrayList<dto> dtos = new ArrayList<dto>();
    public static ArrayList<dto> getDtos() {
        return dtos;
    }

    public dao() throws ParseException {
        dto imp0 = new dto(1, "홍길동", "2016-01-05", 2002);
        dto imp1 = new dto(2, "임꺽정", "2016-02-12", 918);
        dto imp2 = new dto(3, "장길산", "2016-01-16", 1208);
        dto imp3 = new dto(4, "홍길동", "2016-03-17", 2002);
        dtos.add(imp0);
        dtos.add(imp1);
        dtos.add(imp2);
        dtos.add(imp3);

    }
}