@echo off
setlocal
cd /d "%~dp0"
python -c "import http.server, webbrowser; server = http.server.ThreadingHTTPServer(('127.0.0.1', 0), http.server.SimpleHTTPRequestHandler); webbrowser.open('http://127.0.0.1:' + str(server.server_port) + '/'); print('Local preview running. Close this window to stop.'); server.serve_forever()"
if errorlevel 1 (
  echo Python 3 is required. Install Python or use the GitHub Pages website.
  pause
)
