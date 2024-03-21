package ch04.product;

import java.util.HashMap;
import java.util.Map;

//model(모델):
//1. 직접적으로 Database와 대화를 한다.(데이터를 저장, 수정, 삭제, 조회 요구)
//2. 컨트롤러에게 요청을 받아서 Database에서 가져온 데이터를 전달해준다.

public class ProductService {
	//데이터 베이스를 연결하지 않았으므로 임의로 만들어준다.
	//데이터 베이스에서 select 해온 상품 리스트
	Map<String, Product> products = new HashMap<String, Product>();
	//생성자
	public ProductService() {
		Product p = new Product("101","애플사과폰 12","애플전자",1200000,"2020.12.12");
		products.put("101", p);
		p = new Product("102","삼성우주폰 21","삼성전자",1300000,"2021.12.12");
		products.put("102", p);
		p = new Product("103","엘스듀얼폰 12","엘스전자",1500000,"2021.3.3");
		products.put("103", p);
	}
}
