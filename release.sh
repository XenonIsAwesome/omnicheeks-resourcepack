if [ -f "omnicheeks.zip" ]; then 
    rm omnicheeks.zip; 
fi

zip -r omnicheeks.zip . -x "./release.sh" -x "./.git/*" -x "./.git/**"
packhash=$(sha1sum ./omnicheeks.zip | awk '{print $1}')

echo ""
echo "RESOURCE_PACK_SHA1: \"${packhash}\""