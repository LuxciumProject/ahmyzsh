#!/usr/bin/env bash

# -00001-openai_models.sh

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
    local search_term="${1}"
    local filtered_ids
    filtered_ids=("$(oa_models | jq -r '.data[].id | select(contains("'"${search_term}"'"))')")
    if [[ -z "${search_term}" ]]; then
        filtered_ids=("$(oa_models | jq -r '.data[].id')")
    fi
    local ids_json
    ids_json="{\"ids\": $(echo "${filtered_ids[@]}" | jq -cRs 'select(length > 0) | split("\n")[:-1] | map(split(" ")[:-1])')}"

    if [[ "${ids_json}" == "{\"ids\": []}" ]]; then
        echo >&2 "No models match the search string '${search_term}'"
        return 1
    else
        echo "${ids_json}" | jq -r . | jq -
    fi
}
