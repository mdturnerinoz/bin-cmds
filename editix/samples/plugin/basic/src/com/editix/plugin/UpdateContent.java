package com.editix.plugin;

import java.awt.event.ActionEvent;
import java.text.SimpleDateFormat;
import java.util.Date;
import javax.swing.AbstractAction;
import org.w3c.dom.Document;
import org.w3c.dom.Element;
import com.japisoft.editix.plugin.EditiXManager;
import com.japisoft.editix.plugin.EditixDocument;

/**
 * Very simple plugin updating the current DOM
 * @author Alexandre Brillant (http://www.editix.com)
 */
public class UpdateContent extends AbstractAction {

	public void actionPerformed(ActionEvent e) {

		EditixDocument doc = EditiXManager.getInstance().getDocumentModel().getCurrentDocument();
		if ( doc == null ) {
			System.out.println( "Ignoring this action" );
		} else {
			try {
				// Get the current DOM document 
				Document dom = doc.getDOMContent();
				if ( dom == null ) {
					EditiXManager.getInstance().info( "No current XML document" );
					return;
				}

				Element root = dom.getDocumentElement();

				// Create an item element with a date attribute and a content sample
				// Add it to the document root
				Element newItem = dom.createElement( "item" );
				newItem.setAttribute( "date", new SimpleDateFormat( "dd/MM/yy" ).format( new Date() ) );
				newItem.appendChild( dom.createTextNode( "My item" ) );
				
				root.appendChild( newItem );

				// Updating the current content with this new content
				doc.setDomContent( dom );
				
				EditiXManager.getInstance().activeAction( "format" );

			} catch( Exception exc ) {
				
				EditiXManager.getInstance().info( "Invalid document " + exc.getMessage() );
				
			}
		}
		
	}

}
