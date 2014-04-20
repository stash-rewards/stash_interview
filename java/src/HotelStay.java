import java.util.Date;

public class HotelStay {
    private String hotel;
    private String member;
    private Date checkout;

    public HotelStay(String hotel, String member, Date checkout) {
        this.hotel = hotel;
        this.member = member;
        this.checkout = checkout;
    }

    public String getHotel() {
        return hotel;
    }

    public String getMember() {
        return member;
    }

    public Date getCheckout() {
        return checkout;
    }

    public String toString() {
        return "Hotel: " + hotel + "; Member: " + member + "; Checkout: " + checkout;
    }
}
