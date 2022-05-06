class Luhn {

      bool valid(String input){
        
          if(input.length > 1 && int.parse(input.replaceAll(" ","")) != null){
           
            List<String> num = input.split("");
            int sum = 0;
            
            for(var i = 0; i < num.length - 1; i++){
              int temp = int.parse(num[i]);
              if(i % 2 == 0){
                
                if ((int.parse(num[i]) * 2) > 9){
                  sum += ((temp * 2) - 9);
                }
                else {
                  sum += (temp * 2);
                }
              }
              else{
                sum += (temp);
              }
            }
            
            if(sum % 10 == 0){
              return true;
            }
            else {
              return false;
            }
          }
        else{
          
          return false;
        }
      }
}
