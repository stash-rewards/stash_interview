public class HotelReview {
  private String hotel;
  private String member;
  private int score;

  public HotelReview(String hotel, String member, int score) {
      this.hotel = hotel;
      this.member = member;
      this.score = score;
  }

  public String getHotel() {
      return hotel;
  }

  public String getMember() {
      return member;
  }

  public int getScore() {
      return score;
  }

  public String toString() {
      return "Hotel: " + hotel + "; Member: " + member + "; Score: " + score;
  }
}
