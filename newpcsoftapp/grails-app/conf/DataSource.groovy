dataSource {
    pooled = true
    driverClassName = "org.postgresql.Driver"
    username = "postgres"
    password = "postgres"
}
hibernate {
    cache.use_second_level_cache = true
    cache.use_query_cache = false
    cache.region.factory_class = 'net.sf.ehcache.hibernate.EhCacheRegionFactory'
}
// environment specific settings
environments {
    development {
        dataSource {
            dbCreate = "update" // one of 'create', 'create-drop', 'update', 'validate', ''
            url = "jdbc:postgresql://localhost/newpcsoftapp"
			driverClassName = "org.postgresql.Driver"
<<<<<<< HEAD
		         username = "postgres"
				 password = "postgres"

=======
		     username = "postgres"
			 password = "postgres"
>>>>>>> 6a0ec4adb84072e25f69971ab53618a146cbc18c

        }
    }
    test {
        dataSource {
            dbCreate = "update"
            url = "jdbc:postgresql://localhost/newpcsoftapp"
			driverClassName = "org.postgresql.Driver"
<<<<<<< HEAD
		         username = "postgres"
				 password = "postgres"

=======
		     username = "postgres"
			 password = "postgres"
>>>>>>> 6a0ec4adb84072e25f69971ab53618a146cbc18c

			}
    }
    production {
        dataSource {
            dbCreate = "update"
            url = "jdbc:postgresql://localhost/newpcsoftapp"
			driverClassName = "org.postgresql.Driver"
<<<<<<< HEAD
		         username = "postgres"
				password = "postgres"

=======
		     username = "postgres"
			 password = "postgres"
>>>>>>> 6a0ec4adb84072e25f69971ab53618a146cbc18c
            pooled = true
            properties {
               maxActive = -1
               minEvictableIdleTimeMillis=1800000
               timeBetweenEvictionRunsMillis=1800000
               numTestsPerEvictionRun=3
               testOnBorrow=true
               testWhileIdle=true
               testOnReturn=true
               validationQuery="SELECT 1"
            }
        }
    }
}
