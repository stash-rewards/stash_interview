import java.io.BufferedReader;
import java.io.FileReader;
import java.util.List;

public class StashInterview {

    public static void main(String[] args) {
        HotelStayCSVFactory hotelStayFactory = new HotelStayCSVFactory("../raw_data/hotel_stays.csv");
        List<HotelStay> hotelStays = hotelStayFactory.parseFile(true);
        System.out.println("Successfully parsed " + hotelStays.size() + " hotel stay records.");

        HotelReviewCSVFactory hotelReviewFactory = new HotelReviewCSVFactory("../raw_data/hotel_reviews.csv");
        List<HotelReview> hotelReviews = hotelReviewFactory.parseFile(true);
        System.out.println("Successfully parsed " + hotelReviews.size() + " hotel review records.");

        System.out.println("Implement algorithm here! Any command-line arguments you pass in " +
                        "(after \"java -cp 'bin' StashInterview\" on the command line) are available to " +
                        "you in the args[] array.");
    }

}
