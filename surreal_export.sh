echo "Waiting for database to start..."
sleep 10;
echo "Database started. (hopefully)"
echo "Starting export..."
surreal export --conn http://localhost:8000 --user root --pass root --ns test --db test export.surql