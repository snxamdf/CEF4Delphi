unit uFMXVirtualUIBrowser_sp;

interface

uses
  uCEFApplicationCore, uCEFInterfaces, uCEFTypes, uCEFConstants;

procedure CreateGlobalCEFApp;

implementation

procedure CreateGlobalCEFApp;
begin
  GlobalCEFApp                            := TCefApplicationCore.Create;
  GlobalCEFApp.WindowlessRenderingEnabled := True;
  GlobalCEFApp.EnableHighDPISupport       := True;
  GlobalCEFApp.ExternalMessagePump        := True;
  GlobalCEFApp.MultiThreadedMessageLoop   := False;
  GlobalCEFApp.EnableGPU                  := True;
  {$IFDEF DEBUG}
  //GlobalCEFApp.LogFile                    := 'debug.log';
  //GlobalCEFApp.LogSeverity                := LOGSEVERITY_INFO;
  {$ENDIF}
  GlobalCEFApp.StartSubProcess;
end;

end.
