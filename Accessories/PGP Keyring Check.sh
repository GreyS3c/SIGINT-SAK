#!/bin/bash

# This script will check for errors in all public keyring pgp signatures, then print to .txt file.

# Set the output file
pgp_error_log="pgp_signature_errors.txt"

# Check for errors in all public keyring pgp signatures
gpg --list-sigs --check-sigs > $pgp_error_log

# Print the results to the output file
echo "Errors in public keyring pgp signatures:" >> $pgp_error_log
gpg --list-sigs --check-sigs | grep -i "error" >> $pgp_error_log

# Print a success message
echo "Finished checking for errors in public keyring pgp signatures. Results printed to $pgp_error_log"
 
 # Move log file
 mv pgp_signature_errors.txt ~/Downloads/Programs/SIGINT-SAK/Installation\ Files/Logs
 
 exit

