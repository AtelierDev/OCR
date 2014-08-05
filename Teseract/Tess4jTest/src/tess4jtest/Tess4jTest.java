/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

package tess4jtest;
import java.io.File;
import javax.swing.JFileChooser;
import net.sourceforge.tess4j.*;

/**
 *
 * @author Nils
 */
public class Tess4jTest {

    public static void main(String[] args) {
        JFileChooser jc = new JFileChooser("N:\\Google Drive\\Ecole HES\\Teseract");
        jc.showOpenDialog(null);
        if(jc.getSelectedFile() != null)
        {
            File imageFile = jc.getSelectedFile();
            Tesseract instance = Tesseract.getInstance();  // JNA Interface Mapping
            // Tesseract1 instance = new Tesseract1(); // JNA Direct Mapping

            try {
                String result = instance.doOCR(imageFile);
                System.out.println(result);
            } catch (TesseractException e) {
                System.err.println(e.getMessage());
            }
        }
    }
}
