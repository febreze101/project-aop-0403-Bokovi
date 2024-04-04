package projectaop0403Bokovi;

public aspect TraceAspectBokovi {
	pointcut classToTrace(): within(DataApp) || within(ComponentApp) || within(ServiceApp);

	pointcut methodToTrace(): classToTrace() && execution(* getName());
	
	before(): methodToTrace() {
	      System.out.println("\t-->" + thisJoinPointStaticPart.getSignature() + //
	            thisJoinPointStaticPart.getSourceLocation().getLine());
	}

    after(): methodToTrace() {
      System.out.println("\t<--loc: " + thisJoinPointStaticPart.getSourceLocation().getFileName() + ", ");
    }
}

