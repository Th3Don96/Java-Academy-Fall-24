package com.pluralsight;

public class VehicleApp {
    public static void main(String[] args) {

        Hovercraft samsBoat = new Hovercraft("green", 1, 0, 15, 0, true, true, 9001);

        samsBoat.setWheelCount(0);

//        System.out.println(samsBoat.getWheelCount());


        int n = 2;
        System.out.println(n % 5);



    }
}
