/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

package tess4jtest;

import java.util.logging.Level;
import java.util.logging.Logger;
import javax.swing.JFileChooser;
import magick.DrawInfo;
import magick.ImageInfo;
import magick.MagickException;
import magick.MagickImage;
import magick.PixelPacket;

/**
 *
 * @author Administrateur
 */
public class JMagickTest {
    
    public static void main(String[] args) {
        JFileChooser jc = new JFileChooser("N:\\Google Drive\\Ecole HES\\Teseract");
        jc.showOpenDialog(null);
        if(jc.getSelectedFile() != null)
        {
            try {
                ImageInfo info=new ImageInfo(jc.getSelectedFile().getAbsolutePath());
                MagickImage image=new MagickImage(info);
                DrawInfo aInfo = new DrawInfo(info);
                aInfo.setFill(PixelPacket.queryColorDatabase("yellow"));
                //aInfo.setUnderColor(PixelPacket.queryColorDatabase("red"));
                
                aInfo.setOpacity(100);
                aInfo.setPointsize(36);
                aInfo.setFont("Arial");
                
                aInfo.setGeometry("+50+50");
                aInfo.setText("JMagick Tutorial");
                
                image.annotateImage(aInfo);
                image.setFileName("text.jpg"); 
                image.writeImage(info);
            } catch (MagickException ex) {
                Logger.getLogger(JMagickTest.class.getName()).log(Level.SEVERE, null, ex);
            }
        }
    }
}
