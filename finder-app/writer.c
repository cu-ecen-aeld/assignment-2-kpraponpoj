//Create C "writer" application using File IO

#include <stdio.h> 
#include <syslog.h> 
int main(int argc, char *argv[]){
	
	if (argc != 3){ 
		printf("ERROR: Invalid Number of Arguments.\n");
		printf("Total number of arguments should be 2. \n");
		printf("The order of the arguments should be: \n");
		printf("1.File Directory Path.including filename \n"); 
		printf("2.String to be written within the file.\n" );
		syslog(LOG_ERR,"ERROR: Invalid Number of Arguments.\n");
		return 1; 
	}
	
	char *writeFile = argv[1];
	char *writeStr = argv[2]; 
	
	FILE *newFile = fopen(writeFile, "w"); 
	
	if(newFile == NULL){
		printf("ERROR: Failed to create file"); 
		syslog(LOG_ERR,"ERROR: Failed to create file"); 	
	}
	
	syslog(LOG_DEBUG, "Writing \"%s\" to a %s", writeStr, writeFile); 
	fprintf(newFile, writeStr); 
	
	fclose(newFile); 

}
