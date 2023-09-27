package dao;
import java.util.ArrayList;
import dto.Product;

public class ProductRepository{
    
    private ArrayList<Product> listOfProducts=new ArrayList<Product>();
    
    public ProductRepository(){
        Product phone = new Product("P1234", "인도네시아 만델링 G1 수마트라", 80000);
        phone.setDescription("깊은 바디감과 후미에 올라오는 단맛과 쓴맛");
		phone.setCategory("coffee beans");
		phone.setManufacturer("Apple");
		phone.setUnitsInStock(1000);
		phone.setCondition("New");
        
        Product notebook = new Product("P1235", "에티오피아 내추럴 예가체프 G4", 15000);
		notebook.setDescription("과일의 은은한 향과 후미의 단맛과 적은 산미");
		notebook.setCategory("coffee beans");
		notebook.setManufacturer("LG");
		notebook.setUnitsInStock(1000);
		notebook.setCondition("Refurbished");

		Product tablet = new Product("P1236", "light 과테말라 SHB 안티구아", 90000);
		tablet.setDescription("개성있는 산미와 함께 적절한 무게감이 있는 커피");
		tablet.setCategory("espresso machine");
		tablet.setManufacturer("Samsung");
		tablet.setUnitsInStock(1000);
		tablet.setCondition("Old");
		
		// 위와 같이 상품 초기화 하고 아래에 상품을 추가

		listOfProducts.add(phone);
		listOfProducts.add(notebook);
		listOfProducts.add(tablet);
		// listOfProducts.add(상품명);
	}

	public ArrayList<Product> getAllProducts() {
		return listOfProducts;
	}
}