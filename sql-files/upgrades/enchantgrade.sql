ALTER TABLE zenylog
MODIFY COLUMN type  enum('T','V','P','M','S','N','D','C','A','E','I','B','K','X') NOT NULL default 'S';