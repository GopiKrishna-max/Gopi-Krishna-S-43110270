package nov_25;

public class Multithread {
    public static void main(String args[]) {

        Numeric num = new Numeric();
        Alpha alp = new Alpha();

        num.start();
        alp.start();

        System.out.println("Number Thread : " + num.getName());
        System.out.println("Alphabets Thread : " + alp.getName());

        System.out.println("Number Thread Priority : " + num.getPriority());
        System.out.println("Alphabets Thread Priority : " + alp.getPriority());

        System.out.println("Number Thread State : " + num.getState());
        System.out.println("Alphabets Thread State : " + alp.getState());

        System.out.println("Current Thread : " + Thread.currentThread().getName());

        num.setName("Rohan");
        alp.setName("Sana");

        System.out.println("Number Thread State : " + num.getState());
        System.out.println("Alphabets Thread State : " + alp.getState());

        if (num.isAlive()) {
            System.out.println("Rohan thread is Alive");
        } else {
            System.out.println("Rohan thread is Dead");
        }

        if (alp.isAlive()) {
            System.out.println("Sana thread is Alive");
        } else {
            System.out.println("Sana thread is Dead");
        }
    }
}

class Numeric extends Thread {
    int a = 100;

    public void run() {
        try {
            for (int i = 0; i < 10; i++) {
                System.out.println("Numeric Thread Value : " + a);
                a += 5;
            }
        } catch (Exception e) {
            System.out.println(e);
        }
    }
}

class Alpha extends Thread {
    char a = 'K';

    public void run() {
        try {
            for (int i = 0; i < 10; i++) {
                System.out.println("Alpha Thread Letter : " + a);
                a++;
            }
        } catch (Exception e) {
            System.out.println(e);
        }
    }
}
