package test;

public class Test1 {

	public static void main(String[] args) {
		int[] arr = {12, 2, 4, 46};
		for (int i=0; i<arr.length; i++) {
			for (int j=i+1; j<arr.length; j++) {
				if (arr[i] > arr[j]) {
					int temp = 0;
					temp = arr[i];
					arr[i] = arr[j];
					arr[j] = temp;
				}
			}
		}
		for (int n : arr) {
			System.out.println(n);
		}
		System.out.println();
	}

}
