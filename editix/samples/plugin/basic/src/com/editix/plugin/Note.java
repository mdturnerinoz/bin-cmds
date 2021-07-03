package com.editix.plugin;

import java.awt.event.ActionEvent;

import javax.swing.AbstractAction;

import com.japisoft.editix.plugin.EditiXManager;
import com.japisoft.editix.plugin.EditixDocument;

/**
 * Very simple plugin adding a new XML document with a note root
 * @author Alexandre Brillant (http://www.abrillant.com)
 */
public class Note extends AbstractAction {

	public void actionPerformed(ActionEvent e) {
		// Add a new document
		EditixDocument ed = EditiXManager.getInstance().getDocumentModel().newDocument( "XML" );
		// Fill it
		ed.setTextContent( "<note>\n</note>" );
	}

}
