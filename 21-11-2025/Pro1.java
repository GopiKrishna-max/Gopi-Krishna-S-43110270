package nov_21;

public class Pro1 {
    public static void main(String[] args) {
        // Using Abstract Class
        Game g2 = new Football();
        g2.cricket();
        g2.football();
        g2.hockey();
        g2.run();

        // Using Interfaces
        Game1 race = new CarRace();
        Game2 race2 = new CarRace();
        race.start();
        race.stop();
        race2.shoot();
        race2.run();
    }
}

// a) Using Abstract Class
abstract class Game {
    abstract void cricket();
    abstract void football();
    abstract void hockey();

    void run() {
        System.out.println("Athlete is sprinting across the field!");
    }
}

class Cricket extends Game {
    void cricket() {
        System.out.println("Cricket Match: Batting in action!");
    }

    void football() {
        System.out.println("Football practice: passing drills underway.");
    }

    void hockey() {
        System.out.println("Hockey Match: Stickwork and a blazing strike!");
    }
}

class Football extends Cricket {
    @Override
    void football() {
        System.out.println("Football Match: Goal scored with a superb strike!");
    }
}

// b) Using Interfaces
interface Game1 {
    void start();
    void stop();
}

interface Game2 {
    void shoot();
    void run();
}

class CarRace implements Game1, Game2 {
    public void start() {
        System.out.println("Engines roaring — the race begins!");
    }

    public void stop() {
        System.out.println("Engines off — race concluded.");
    }

    public void shoot() {
        System.out.println("Nitro boost engaged!");
    }

    public void run() {
        System.out.println("Passing opponents at full throttle!");
    }
}
