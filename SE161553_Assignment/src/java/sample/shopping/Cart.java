
package sample.shopping;

import java.util.HashMap;
import java.util.Map;
import sample.product.ProductDTO;


public class Cart {
    private Map<String, ProductDTO> cart;
    public Cart(){
        
    }

    public Cart(Map<String, ProductDTO> cart) {
        this.cart = cart;
    }

    public Map<String, ProductDTO> getCart() {
        return cart;
    }

    public void setCart(Map<String, ProductDTO> cart) {
        this.cart = cart;
    }

    public boolean add(ProductDTO produ) {
        boolean check = false;
        try{
            if(this.cart == null){
                this.cart = new HashMap<>();   //tạo mới giỏ hàng
            }
            if(this.cart.containsKey(produ.getProductID()))  //nếu giỏ hàng có các sản phẩm đấy rồi, và chèn thêm | VD: giỏ hàng có 1 quả, thêm 2 quả vào => 3 quả
            {
                
                int currentQuantity = this.cart.get(produ.getProductID()).getProductQuantity();
                produ.setProductQuantity(currentQuantity + produ.getProductQuantity());
            }
            this.cart.put(produ.getProductID(), produ);
            check=true;
        }catch(Exception e){
            
        }
        return check;
    }

    public boolean edit(String id, ProductDTO produ) {
        boolean check = false;
        try{
            if (this.cart != null) {
                if (this.cart.containsKey(id))
                {
                    this.cart.replace(id, produ);
                }
                this.cart.put(produ.getProductID(), produ);
                check = true;
            }
        }catch(Exception e){
            
        }
        return check;
    }
    public boolean remove(String id) {
        boolean check = false;
        try{
            if(this.cart != null){
                this.cart.remove(id);
            }
        }catch(Exception e){
            
        }
        return check;
    }
}
