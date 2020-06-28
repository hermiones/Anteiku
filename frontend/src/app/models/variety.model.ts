export interface VarietyModelServer {
  id: number;
  title: string;
}

export interface ServerResponse {
  count: number;
  varieties: VarietyModelServer[];
}
