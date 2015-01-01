#! /bin/sh

if [ $# -eq 0 ]; then
    echo "$0 PROJECT_NAME"
    exit 1
fi

OLD_CD=`pwd`
DIR=`dirname $0`

i=0
while [ $# -ne 0 ]; do
case $1 in
-d*)
    PROJECT_DESP=${1:2}
    ;;
-d)
    PROJECT_DESP=$2
    shift
    ;;
--desp-file=*)
    PROJECT_DESP=`cat ${1:12}`
    ;;
--desp-file)
    PROJECT_DESP=`cat $2`
    shift
    ;;
-o*)
    PROJECT_DIR=${1:2}
    ;;
-o)
    PROJECT_DIR=$2
    shift
    ;;
*)
    case $i in
    0)
        PROJECT_NAME=$1
        ((i += 1))
        ;;
    *)
        echo "unknown argument : $1"
        exit 1
        ;;
    esac
    ;;
esac
shift
done

if [ -z "$PROJECT_DIR" ]; then
    PROJECT_DIR=..
fi

PROJECT_BASE=${PROJECT_DIR}/${PROJECT_NAME}

if [ -d ${PROJECT_BASE} ]; then
    echo "$PROJECT_BASE has existed"
    exit 2
fi

echo "create project $PROJECT_NAME at $PROJECT_BASE"

mkdir -p ${PROJECT_BASE}

# template file
cp ${DIR}/gitignore.template ${PROJECT_BASE}/.gitignore
cat ${DIR}/build.xml.template\
    | sed s/__PROJECT__/${PROJECT_NAME}/g\
    | sed s/__DESCRIPTION__/${PROJECT_DESP}/g\
    > ${PROJECT_BASE}/build.xml
cat ${DIR}/ivy.xml.template\
    | sed s/__PROJECT__/${PROJECT_NAME}/g\
    | sed s/__DESCRIPTION__/${PROJECT_DESP}/g\
    > ${PROJECT_BASE}/ivy.xml

# idea setting
mkdir ${PROJECT_BASE}/.idea
echo ${PROJECT_NAME} > ${PROJECT_BASE}/.idea/.name
cp ${DIR}/idea.template/project.iml ${PROJECT_BASE}/.idea/${PROJECT_NAME}.iml
cat ${DIR}/idea.template/modules.xml.template\
    | sed s/__PROJECT__/${PROJECT_NAME}/g\
    > ${PROJECT_BASE}/.idea/modules.xml
cp -r ${DIR}/idea.template/copyright ${PROJECT_BASE}/.idea
cp -r ${DIR}/idea.template/scopes ${PROJECT_BASE}/.idea
cp ${DIR}/idea.template/*.xml ${PROJECT_BASE}/.idea

# default directory
mkdir ${PROJECT_BASE}/src
mkdir ${PROJECT_BASE}/test