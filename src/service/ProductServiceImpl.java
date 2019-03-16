package service;

import model.Product;

import java.util.*;

public class ProductServiceImpl implements ProductService {
    private static Map<Integer, Product> products;

    static {
        products = new HashMap<>();
        products.put(1, new Product(1, "pen", "3000", "green", "Mic"));
        products.put(2, new Product(2, "ruler", "3000", "20cm", "Thien Long"));
        products.put(3, new Product(3, "pen", "8000", "orange", "Dell"));
        products.put(4, new Product(4, "pen", "10000", "blue", "Apple"));
        products.put(5, new Product(5, "pen", "12000", "puble", "Samsumx"));
    }


    public Product findById(int id) {
        return products.get(id);
    }

    public void update(int id, Product product) {
        products.put(id, product);
    }

    public void remove(int id) {
        products.remove(id);
    }


    public List<Product> findAll() {
        return new ArrayList<>(products.values());

    }


    public void save(Product product) {
        products.put(product.getId(), product);
    }


    public List<Product> find(String nameKey) {

        Map<Integer, Product> f = new HashMap<>();

        for (Map.Entry<Integer, Product> i : products.entrySet()) {
            if (nameKey.equals(i.getValue().getName())) {
                Product x = new Product(i.getValue().getId(), i.getValue().getName(), i.getValue().getPrice(), i.getValue().getDescribe(), i.getValue().getProducer());
                f.put(x.getId(), x);
            }
        }
        return new ArrayList<>(f.values());
    }
}
