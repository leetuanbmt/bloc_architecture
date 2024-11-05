echo "Start notify_chatops.sh"

dirname=$(dirname "$PWD")

version=$(grep -E '^version:' $dirname/pubspec.yaml | awk -F':' '{print $2}' | sed 's/ //g')

release_note=$(git log -1 --pretty=%B)


echo "Version: $version"

# Load the environment variables


for arg in "$@"; do
  if [[ $arg == --version=* ]]; then
    version="${arg#*=}"
  elif [[ $arg == --note=* ]]; then
    release_note="${arg#*=}"
  fi
done

echo "release_note: $release_note"



FIREBASE_APP_ID_ANDROID=$(grep FIREBASE_APP_ID $dirname/.env | cut -d '=' -f 2)
FIREBASE_APP_ID_IOS=$(grep FIREBASE_APP_ID_IOS $dirname/.env | cut -d '=' -f 2)
FIREBASE_CLI_TOKEN=$(grep FIREBASE_CLI_TOKEN $dirname/.env | cut -d '=' -f 2)
MMAUTHTOKEN=$(grep MMAUTHTOKEN $dirname/.env | cut -d '=' -f 2)
xCsrfToken=$(grep x-csrf-token $dirname/.env | cut -d '=' -f 2)
channelId=$(grep channelId $dirname/.env | cut -d '=' -f 2)
userId=$(grep userId $dirname/.env | cut -d '=' -f 2)
# echo "FIREBASE_APP_ID_ANDROID: $FIREBASE_APP_ID_ANDROID"
# echo "FIREBASE_APP_ID_IOS: $FIREBASE_APP_ID_IOS"
# echo "FIRE_BASE_CLI_TOKEN: $FIREBASE_CLI_TOKEN"
# echo "MMAUTHTOKEN: $MMAUTHTOKEN"
# echo "x-csrf-token: $xCsrfToken"
# echo "channelId: $channelId"
# echo "userId: $userId"


# Send a message to the chatops channel

IOS_BUILD_URL="https://appdistribution.firebase.google.com/testerapps/${FIREBASE_APP_ID_IOS}"
ANDROID_BUILD_URL="https://appdistribution.firebase.google.com/testerapps/${FIREBASE_APP_ID_ANDROID}"

branch=$(git rev-parse --abbrev-ref HEAD)
commit_id=$(git rev-parse HEAD)

message="Build **_OmniCare_**(${version})
**_Branch_**: ${branch}
**_Commit_**: ${commit_id}
Install iOS: **_[IOS](${IOS_BUILD_URL})_**
Install on Android: **_[Android](${ANDROID_BUILD_URL})_**
\`\`\`Note\`\`\` ${release_note}
"
echo "Message: $message"

echo "Data: $data"
echo "Version: $version"
echo "Note: $release_note"


curl 'https://chat.runsystem.vn/api/v4/posts' \
    -H 'content-type: application/json' \
    -H "cookie: MMAUTHTOKEN=$MMAUTHTOKEN" \
    -H "x-csrf-token: $xCsrfToken" \
    --data-raw "$(jq -n \
        --arg message "$message" \
        --arg channel_id "$channelId" \
        --arg user_id "$userId" \
        '{message: $message, channel_id: $channel_id, user_id: $user_id}')" 

