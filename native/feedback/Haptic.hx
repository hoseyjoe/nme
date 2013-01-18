package native.feedback;
#if (cpp || neko)


import native.Loader;


class Haptic {
	
	
	public static function vibrate(period:Int = 0, duration:Int = 1000):Void {
		
		#if cpp
		nme_haptic_vibrate(period, duration);
		#end
		
	}
	
	
	
	
	// Native Methods
	
	
	
	
	#if cpp
	static var nme_haptic_vibrate = Loader.load("nme_haptic_vibrate", 2);
	#end
	
	
}


#end