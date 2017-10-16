#!/usr/bin/env bash
#
# Deletes all deployments created in kubernetes by the remaining scripts.
#######################################

echo "Deleting all deployments deployed by this scripts in kubectl cluster..."

dir=$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )

source "${dir}/helpers.bash"

kubectl delete -f "${dir}/../deployments/guestbook/"

kubectl delete -f "${dir}/../deployments/guestbook/ingress"

kubectl delete -f "${dir}/../deployments/"

kubectl delete -f "${dir}/../network-policy/"

echo "Deleting all deployments deployed by this scripts in kubectl cluster... DONE!"
