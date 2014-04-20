public class HotelReviewCSVFactory extends CSVFactory<HotelReview> {

    public HotelReviewCSVFactory(String fileName) {
        super(fileName);
    }

    protected HotelReview buildFromFields(String[] fields) throws Exception {
        String hotel = fields[0];
        String member = fields[1];
        int score = Integer.parseInt(fields[2]);
        return new HotelReview(hotel, member, score);
    }

}
