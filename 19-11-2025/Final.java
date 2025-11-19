package final1;

public class Final {
    public static void main(String[] args) {
        Son s = new Son();
        s.bike();
        s.oldBike();   // inherited final method
    }
}

// final method example
class Father {
    final void oldBike() {   // cannot be overridden
        System.out.println("Royal Enfield 2002");
    }
}

// final class example
final class Son extends Father {   // cannot be extended further
    void bike() {
        System.out.println("KTM 390");
    }
}

class DemoFinalVariable {
    final int speedLimit = 90;   // constant value

    void showLimit() {
        System.out.println("Speed Limit: " + speedLimit);
    }
}
