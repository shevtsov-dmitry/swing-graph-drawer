import javax.swing.*;

void createAndShowGUI() {
	// Create and set up the window.
	JFrame frame = new JFrame("Graph Drawer");
	frame.setDefaultCloseOperation(JFrame.EXIT_ON_CLOSE);
	frame.setSize(900, 700);

	// Add new items to pane
	// frame.getContentPane().add();

	// frame.pack();
	frame.setVisible(true);
}

void main() {
	// Schedule a job for the event-dispatching thread:
	// creating and showing this application's GUI.
	javax.swing.SwingUtilities.invokeLater(new Runnable() {
		public void run() {
			createAndShowGUI();
		}
	});
}
