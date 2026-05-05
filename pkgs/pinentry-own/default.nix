{ lib, pkgs }:
pkgs.writeShellApplication rec {
  name = "pinentry-own";
  runtimeInputs = with pkgs; [ pinentry-rofi pinentry-curses pinentry-tty ];
  text = ./pinentry-own.sh;
}
