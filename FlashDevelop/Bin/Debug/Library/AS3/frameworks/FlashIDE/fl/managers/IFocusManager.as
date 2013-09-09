﻿package fl.managers
{
	import flash.display.InteractiveObject;
	import flash.display.Sprite;
	import fl.controls.Button;

	/**
	 *  Implement the IFocusManager interface to create a custom focus manager. 
	 */
	public interface IFocusManager
	{
		/**
		 *  Gets or sets a reference to the default button.
		 */
		public function get defaultButton () : Button;
		/**
		 *  @private
		 */
		public function set defaultButton (value:Button) : void;
		/**
		 *  Gets or sets a value that indicates whether the default button
		 */
		public function get defaultButtonEnabled () : Boolean;
		/**
		 *  @private
		 */
		public function set defaultButtonEnabled (value:Boolean) : void;
		/**
		 *  Gets the next unique tab index to use in the current tab loop. A tab loop 
		 */
		public function get nextTabIndex () : int;
		/**
		 *  Gets or sets a value that determines whether the user interface
		 */
		public function get showFocusIndicator () : Boolean;
		/**
		 *  @private
		 */
		public function set showFocusIndicator (value:Boolean) : void;

		/**
		 *  Retrieves the IFocusManagerComponent component that currently has focus.
		 */
		public function getFocus () : InteractiveObject;
		/**
		 *  Sets focus to an IFocusManagerComponent component. This method does not 
		 */
		public function setFocus (o:InteractiveObject) : void;
		/**
		 *  Sets the <code>showFocusIndicator</code> property to <code>true</code>.
		 */
		public function showFocus () : void;
		/**
		 *  Sets the <code>showFocusIndicator</code> property to <code>false</code>. 
		 */
		public function hideFocus () : void;
		/**
		 *  Activates a focus manager.
		 */
		public function activate () : void;
		/**
		 *  Deactivates a focus manager.
		 */
		public function deactivate () : void;
		/**
		 *  Retrieves the IFocusManagerComponent object that contains the specified
		 */
		public function findFocusManagerComponent (component:InteractiveObject) : InteractiveObject;
		/**
		 *  Retrieves the component that receives focus next if the user 
		 */
		public function getNextFocusManagerComponent (backward:Boolean = false) : InteractiveObject;
	}
}