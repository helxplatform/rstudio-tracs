import os

NB_PREFIX = os.getenv("NB_PREFIX", "")

def process_files(files):
    for file in files:
        with open(f"{file}", "r") as data:
            filedata = data.read()
            newdata = filedata.replace("${NB_PREFIX}", NB_PREFIX)
        with open(f"{file}", "w") as data:
            data.write(newdata)


if __name__ == "__main__":
    process_files(files=["/rserver.conf", "/etc/nginx/conf.d/default.conf"])
