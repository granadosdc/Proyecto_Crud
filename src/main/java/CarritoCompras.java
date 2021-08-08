
import java.util.Scanner;

public class CarritoCompras {

   
    public static void main(String[] args) {
       int cantProdTotal = 5;
       int codProd[]= new int[]{1, 2, 3, 4, 5, 6};
       String nombres[]= new String[]{"Almendra canela","Cacahuate canela","Avellana cacao"};
       int precios[]= new int[]{250,150,300};
       
       Scanner teclado = new Scanner(System.in);
       
       int codProdCarrito[]=new int[10];
       int cantCarrito[]= new int[10];
       int subCarrito[]= new int[10];
       
       int cantLineas = 0;
       int op;
       do{
           System.out.println("Menu de opciones");
           System.out.println("________________");
           System.out.println("1 - mostrar productos");
           System.out.println("2 - mostrar carrito");
           System.out.println("3 - agregar producto");
           System.out.println("4 - salir");
           System.out.println("Ingrese la opción deseada: ");
           op = teclado.nextInt();
           
          switch(op){
              case 1:mostrarProductos(codProd, nombres, precios, cantProdTotal);//llamar a muestra productos
                  break;
              case 2: mostrarCarrito(codProd, nombres, precios,
                      codProdCarrito, cantCarrito, subCarrito, cantLineas); //llamar a muestra carrito
                  break;
              case 3: if (cantLineas < 9){
              cantLineas = AgregarCarrito (codProd, nombres, precios,
                      codProdCarrito, cantCarrito, subCarrito, cantLineas,
                      teclado);
              }
              else{
              System.out.println("--EL CARRITO ESTA LLENO--");
              }
              break;
          }  
          
       }while (op !=4);
       int sumaTotal = mostrarCarrito(codProd, nombres, precios,
                      codProdCarrito, cantCarrito, subCarrito, cantLineas);
        System.out.println("El total es: "+ sumaTotal);
       //mostrar el total

    }
    public static void mostrarProductos (int[] cp, String[] np, int[] pp, int cant) {
        int i;
        System.out.println();
        System.out.println("Lista de productos");
        System.out.println("__________________");
        for (i=0; i<cant; i++){
            System.out.println(cp[i] + " - " +np[i] + " - " + pp[i]);
        }
    }
    
    
    public static int mostrarCarrito (int[] cp, String[] np, int[] pp, 
            int[] cp_linea, int[] cantLinea , int [] subt, int cantLineas ) {
        int i, suma = 0;
        System.out.println();
        System.out.println("Carrito de compras");
        System.out.println("__________________");
        for (i=0; i<cantLineas; i++){
            int h =buscarProd(cp_linea[i], cp);// llamar de busqueda de productos
            System.out.println(cp[i] + " - " +np[h] + " - " + pp[h]
                       +" - " + cantLinea[i] + " - " + subt[i]);
            suma = suma + subt[i];
        }
        return suma;
}
    public static int buscarProd(int codBus, int[] productos){
    int posicion = -1;
    for (int i=0; i<5; i++){
        if(codBus == productos[i]){
            posicion = i;
        }
    }
    return posicion;
    }
public static int AgregarCarrito (int[] cp, String[] np, int[] pp, 
            int[] cp_linea, int[] cantLinea , int [] subt, int cantLineas,
            Scanner teclado){
            
    System.out.println("Ingrese el código de producto deseado ");
    int cod = teclado.nextInt();
    
    int posi = buscarProd(cod, cp);
    if(posi== -1){
        System.out.println("Ese producto no existe!!!");
        return cantLineas;
        
    }
    System.out.print("Ingrese la cantidad deseada: ");
    int cant = teclado.nextInt();
    
    cp_linea[cantLineas]= cod;
    cantLinea[cantLineas] = cant;
    subt[cantLineas] = pp[posi]* cant;
    
    return (cantLineas + 1);
    
}
}   
