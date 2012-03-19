package 
{
	/**
	 * ...
	 * @author Rahmat Hidayat
	 */
	public class AdvancedTrace
	{
		public static const AFTER:String 		= 'AFTER=';
		public static const BEFORE:String 		= 'BEFORE=';
		public static const ERROR:String		= 'ERROR!';
		
		public static const VERSION:String		= '0.1';
		
//____________________________________________________________________________
		
		public static var CONFIG_XML_PATH:String;
		public static var PRELOADER_PATH:String;		
		
		private static var _instance:AdvancedTrace;
		
		public function AdvancedTrace() 
		{
			
		}
		
// DEBUGGER
//____________________________________________________________________________
		
		public function debug(className:String, funcName:String = '!caller'):AdvancedTrace
		{		
			trace('');
			trace('[' + className + '.' + funcName + ']');
					
			
			
			return this;
		}
		
		public function arg(data:*,arg:String = 'arg'):AdvancedTrace
		{
			trace('(',arg,')---->',data);
			
			return this;
		}
		
		public function tag(comment:String = '!followup'):AdvancedTrace
		{
			trace('(TAGGED)====>', comment);
			
			return this;
		}
		
		public function end(comment:String = 'end'):AdvancedTrace
		{
			trace('__________________________________________________________________', comment);
			trace('');
			trace('');
			
			return this;
		}
		
		
// SINGLETON
//____________________________________________________________________________

		public static function get api():AdvancedTrace
		{
			if(_instance == null) _instance = new AdvancedTrace();
			
			return _instance;
			
			
		}
		
	}

}