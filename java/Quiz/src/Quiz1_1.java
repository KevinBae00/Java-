class Quiz1_1 {

    public static void main(String[] args) {

        int[] answer = {1, 4, 4, 3, 1, 4, 4, 2, 1, 3, 2};

//        (1) 배열선언
        int[] counter = new int[4];
        for (int i = 0; i < answer.length; i++) {

//            (2) 배열 초기화 하기
            counter[answer[i] - 1]++;

        }

        for (int i = 0; i < counter.length; i++) {

//            (3) 배열값 출력 하기
            System.out.printf("%d", i + 1);
            for (int j = 0; j < counter[i]; j++) {
                System.out.print("*");
            }

            System.out.println();

        }

    }

}