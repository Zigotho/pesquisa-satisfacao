import { Survey } from '../entities/survey.entity';

export class CreateSurveyDto extends Survey {
  id?: number;
  name: string;
  description: string;
  created_at?: string | Date;
  is_active: boolean;
}
