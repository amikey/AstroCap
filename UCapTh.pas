unit UCapTh;

interface

uses
  Classes;

type
  TCaptureThread = class(TThread)
  private
    { Private-Deklarationen }
  protected
    procedure Execute; override;
  end;

implementation

{ Wichtig: Methoden und Eigenschaften von Objekten in der VCL k�nnen nur in einer
  Methode namens Synchronize verwendet werden; Beispiel:
      Synchronize(UpdateCaption);

  wobei UpdateCaption so aussehen k�nnte:

    procedure TCaptureThread.UpdateCaption;
    begin
      Form1.Caption := 'Aktualisiert in einem Thread';
    end; }

{ TCaptureThread }

procedure TCaptureThread.Execute;
begin
  { Thread-Code hier plazieren }
end;

end.
