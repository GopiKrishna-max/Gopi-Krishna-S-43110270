package nov_25;

public class Multithread_Timer {
    public static void main(String args[]) {

        Hours h = new Hours();
        Minutes m = new Minutes();

        h.start();
        m.start();
    }
}

class Hours extends Thread {
    int hour = 1;

    public void run() {
        try {
            for (int i = 1; i <= 12; i++) {
                System.out.println("Hour : " + hour);
                hour++;
                Thread.sleep(2000); 
            }
        } catch (Exception e) {
            System.out.println(e);
        }
    }
}

class Minutes extends Thread {
    int min = 10;

    public void run() {
        try {
            for (int i = 10; i <= 70; i += 5) {
                System.out.println("Minute : " + min);
                min += 5;
                Thread.sleep(500); 
            }
        } catch (Exception e) {
            System.out.println(e);
        }
    }
}
