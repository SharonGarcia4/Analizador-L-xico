package codigo;

import java.io.File;

/**
 *
 * @author hp
 */
public class Principal {
    public static void main(String[] args){
        String ruta = "C:/Users/hp/OneDrive - Instituto Tecnológico Superior de Tepeaca/Documents/NetBeansProjects/Analizador_Lexico/src/codigo/lexer.flex";
        generarLexer(ruta);
    }
    public static void generarLexer(String ruta){
        File archivo = new File(ruta);
        JFlex.Main.generate(archivo);
    }
}
