package superdemo;

public class Super {
	public static void main(String[] args) {
        Son s = new Son();
        s.bike();        // Son's own method
        s.showOldBike(); // Calls Father's method using super
    }
}

class Father {
    void oldBike() {
        System.out.println("Yamaha RX100 1990");
    }
}

class Son extends Father {
    void bike() {
        System.out.println("Ducati Panigale V4");
    }

    void showOldBike() {
        super.oldBike();   // using super to call parent method
    }
}
	


