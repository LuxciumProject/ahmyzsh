#!/usr/bin/env bash

# -00000-openai_models.sh

function openai_models() {
    local OPENAI_SOURCE
    OPENAI_SOURCE="${HOME}/.toks/open-ai.env"
    if [[ -f "${OPENAI_SOURCE}" ]]; then
        # shellcheck source="/home/luxcium/.toks/open-ai.env"
        source "${OPENAI_SOURCE}"
        openai_source_keys
        curl -L -s https://api.openai.com/v1/models \
            -H "Authorization: Bearer ${OPENAI_API_KEY}" \
            -H "OpenAI-Organization: ${OPENAI_ORG_ID}" | jq
    else
        return 1
    fi
}

function openai_models_ids() {
    local OPENAI_SOURCE
    OPENAI_SOURCE="${HOME}/.toks/open-ai.env"
    if [[ -f "${OPENAI_SOURCE}" ]]; then
        # shellcheck source="/home/luxcium/.toks/open-ai.env"
        source "${OPENAI_SOURCE}"
        openai_source_keys

        local search="${1:-}"
        local ids
        ids=$(openai_models | jq '.data[].id' | tr -d '"')

        if [[ -n "${search}" ]]; then
            ids=$(echo "${ids}" | grep "${search}")
            if [[ -z "${ids}" ]]; then
                echo >&2 "No results found for '${search}'."
                return 1
            fi
        fi

        echo "${ids}" | jq -R -s -c 'split("\n")[:-1]' | jq '.[]'
        return 0
    fi
    return 1
}

# jq '.[]' #

# #!/usr/bin/env bash

# # openai_models.sh

# function openai_models() {
#     local OPENAI_SOURCE
#     OPENAI_SOURCE="${HOME}/.toks/open-ai.env"
#     if [[ -f "${OPENAI_SOURCE}" ]]; then
#         # shellcheck source="/home/luxcium/.toks/open-ai.env"
#         source "${OPENAI_SOURCE}"
#         openai_source_keys
#         curl -L -s https://api.openai.com/v1/models \
#             -H "Authorization: Bearer ${OPENAI_API_KEY}" \
#             -H "OpenAI-Organization: ${OPENAI_ORG_ID}"
#     else
#         return 1
#     fi
# }

# function openai_models_ids() {
#     local search_term="${1}"
#     local filtered_ids
#     filtered_ids=$(oa_models | jq -r '.data[].id | select(contains("'"${search_term}"'"))')
#     if [[ -z "${search_term}" ]]; then
#         filtered_ids=$(oa_models | jq -r '.data[].id')
#     fi

#     if [[ -z "${filtered_ids}" ]]; then
#         echo >&2 "No models match the search string '${search_term}'"
#         return 1
#     fi

#     echo "${filtered_ids}"
# }

# function oa_models() {
#     local OPENAI_SOURCE
#     OPENAI_SOURCE="${HOME}/.toks/open-ai.env"
#     if [[ -f "${OPENAI_SOURCE}" ]]; then
#         # shellcheck source="/home/luxcium/.toks/open-ai.env"
#         source "${OPENAI_SOURCE}"
#         openai_source_keys
#         curl -L -s https://api.openai.com/v1/models \
#             -H "Authorization: Bearer ${OPENAI_API_KEY}" \
#             -H "OpenAI-Organization: ${OPENAI_ORG_ID}"
#         return 0
#     fi
#     return 1
# }

# function list_models() {
#     local OPENAI_SOURCE
#     OPENAI_SOURCE="${HOME}/.toks/open-ai.env"
#     if [[ -f "${OPENAI_SOURCE}" ]]; then
#         # shellcheck source="/home/luxcium/.toks/open-ai.env"
#         source "${OPENAI_SOURCE}"
#         openai_source_keys
#         oa_models | jq -r '.data[].id' | grep -iF "${1}" || true | while read -r id; do
#             echo "$id"
#         done
#         if [[ -z "$id" ]]; then
#             echo "No models match the search string '$1'" >&2
#             return 1
#         fi
#         return 0
#     fi
#     return 1
# }

# function oa_models_ids() {
#     oa_models | jq '.data[].id'
# }

# function oa_models_ids___() {
#     local search_string=$1
#     local matches=()

#     local model_ids
#     model_ids=$(oa_models | jq -r '.data[].id')

#     for id in $model_ids; do
#         if [[ "$id" == *"$search_string"* ]]; then
#             matches+=("$id")
#         fi
#     done

#     if [[ ${#matches[@]} -eq 0 ]]; then
#         echo "No models match the search string '$search_string'"
#         return 1
#     fi

#     printf '%s\n' "${matches[@]}"
#     return 0
# }

# function oa_models_ids_() {
#     local search_string=$1
#     local model_ids
#     model_ids=$(oa_models | jq -r --arg search "$search_string" '.data[].id | select(index($search) != null)')
#     if [[ -z "$model_ids" ]]; then
#         echo "No models match the search string '$search_string'"
#         return 1
#     fi
#     printf '%s\n' "$model_ids"
#     return 0
# }

# function oa_models_ids__() {
#     local search_string=${1:-}

#     local model_ids
#     model_ids=$(oa_models | jq -r '.data[].id')

#     if [[ -z "$search_string" ]]; then
#         printf '%s\n' "${model_ids[@]}"
#         return 0
#     fi

#     local matches=()
#     for id in $model_ids; do
#         if [[ "$id" == *"$search_string"* ]]; then
#             matches+=("$id")
#         fi
#     done

#     if [[ ${#matches[@]} -eq 0 ]]; then
#         echo "No models match the search string '$search_string'"
#         return 1
#     fi

#     printf '%s\n' "${matches[@]}"
#     return 0
# }
