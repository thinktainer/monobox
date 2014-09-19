`build-essential`
`autoconf`
`shtool`
`libtool`
`unixodbc`
`unixodbc-dev`
`download sql layer`
`autoreconfigure -i`
`./configure --with-unix --prefix=/usr/local`
`make && sudo make install`

~/.odbc.ini
	[ODBC Data Sources]
	fdbsql = FoundationDB

	[fdbsql]
	Description         = fdb_sql_test_conn
	Driver              = /usr/local/lib/fdb-sql-layer-odbcw.so
	Trace               = No
	TraceFile           = ""
	Database            = test_odbc
	Servername          = localhost
	Username            = test
	Password            =
	Port                = 15432
	Protocol            = 7.4
	ReadOnly            = No
	RowVersioning       = No
	ShowSystemTables    = No
	ShowOidColumn       = No
	FakeOidIndex        = No
	Debug               = 1
	CommLog             = 0
	ConnSettings        = ""
	SSLMode 			= disable

`/usr/bin/isql "DSN=fdbsql"`

