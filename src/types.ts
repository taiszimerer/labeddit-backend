
export interface TokenPayload {
    id: string,
    name: string
}

export interface PostModel {
    id: string,
    content: string,
    createdAt: string,
    updatedAt: string,
    creator: {
        id: string,
        name: string
    }
}

export interface PostDB {
    id: string,
    creator_id: string,
    content: string,
    created_at: string,
    updated_at: string
}

export interface PostWithCreatorsDB extends PostDB {
    creator_name: string
}

export interface UserDB {
    id: string,
    nickname: string,
    email: string,
    password: string,
    created_at: string
}

export interface UserModel {
    id: string,
    nickname: string,
    email: string,
    password: string,
    createdAt: string
}
