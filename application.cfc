component {
  this.name = "UMB_Portal1";
  // this.name = hash( getCurrentTemplatePath() );
  THIS.sessionManagement="true";
	THIS.clientManagement="true"; 
	THIS.applicationTimeout=CreateTimeSpan(0,0,90,0);
  THIS.sessionTimeout=CreateTimeSpan(0,0,30,0);

  function onApplicationStart() {
    return true;
  }

  /* On Session Start*/
  function onSessionStart() {

  }

  /* On Request Start*/
  function onRequestStart( string targetPage ) {
  }

  function onRequest( string targetPage ) {
    include arguments.targetPage;
  }

  function onRequestEnd() {}

  function onSessionEnd( struct SessionScope, struct ApplicationScope ) {}

  function onApplicationEnd( struct ApplicationScope ) {}
}
