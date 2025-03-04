{  Sourcecodeinformation:
Name:       Markus Wirtz
Aufgabe:    1
}

{ Aufgabenstellung:
Schreiben Sie ein Pascal-Programm, welches die Breite, die Länge und die Höhe
eines Raumes einliest und dann den Rauminhalt ausgibt! }

program lb3_aufgabe1;
  // Programmname

uses crt;

var
  // Zuweisung der Variablen mit VAR
  b, l, h, vol: real;

function volumenBerechnen(b, l, h:real):real;
  // Function zur Berechnung des Volumens
    begin
    // Rauminhalt berechnen
    volumenBerechnen := b * l * h;
    end;

begin
  writeln('##############  Berechnung des Rauminhaltes in Kubikmeter  ##############');
  writeln();

  { Benutzer nach den Maßen des Raumes fragen und "0" Eingaben mit einer IF Abfrage abfangen.
    Das läuft in einer Repeat-Schleife da die Anfrage einmal aufgeführt werden muss und
    solange läuft bis die Bedingung eintrifft das alle Eingaben > 0 sind! }

		    repeat
              ClrScr;
              Write('Geben Sie nun die Breite des Raumes in Metern ein: ');
				      Readln(b);
				      Writeln();
				      Write('Geben Sie nundie Laenge des Raumes in Metern ein: ');
				      Readln(l);
				      Writeln();
				      Write('Geben Sie nun die Hoehe des Raumes in Metern ein: ');
				      Readln(h);
				      Writeln();

		          if (b <= 0) or (l <= 0) or (h <= 0) then
		             begin
		             Writeln('Ups. Etwas ist schief gelaufen! Probieren wir es erneut.');
		             Writeln();
                 readln;
		             end;

        until (b>0) and (l>0) and (h>0);

  { Aufrufen der Funktion "Volumen" zur Berechnung des Volumens. Nich nötig
    über eine Funktion zu gehen aber so übe ich auch das immer gleich mit. }
  vol := volumenBerechnen(b,l,h);

  // Ergebnis ausgeben mit nur zwei Stellen nach dem Komma
  Writeln('Der Rauminhalt betraegt: ', vol:0:2, ' Kubikmeter.');
  Writeln();

  // Programmende abwarten
  Writeln('Druecken Sie eine Taste, um das Programm zu beenden.');
  Readln;

end.

  // Programmende




