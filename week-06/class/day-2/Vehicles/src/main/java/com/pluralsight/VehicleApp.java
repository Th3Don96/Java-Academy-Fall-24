package com.pluralsight;

public class VehicleApp {
    public static void main(String[] args) {

        Hovercraft samsBoat = new Hovercraft("red", 6, 100, 20, 0, true, true, 100);

        samsBoat.setWheelCount(0);

//        System.out.println(samsBoat.getWheelCount());


        int n = 2;
        System.out.println(n % 5);



    }
}
