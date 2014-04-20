import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Date;

public class HotelStayCSVFactory extends CSVFactory<HotelStay> {

    public HotelStayCSVFactory(String fileName) {
        super(fileName);
    }

    protected HotelStay buildFromFields(String[] fields) throws Exception {
        String hotel = fields[0];
        String member = fields[1];

        SimpleDateFormat dateFormatter = new SimpleDateFormat("yyyy-MM-dd");
        Date checkout = dateFormatter.parse(fields[2]);

        return new HotelStay(hotel, member, checkout);
    }

}
